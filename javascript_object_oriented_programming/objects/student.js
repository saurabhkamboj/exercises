function createStudent(name, year) {
  return {
    name,
    year,
    courses: [],

    info() {
      console.log(`${this.name} is a ${this.year} year student`)
    },

    addCourse(course) {
      this.courses.push(course);
    },

    listCourses() {
      return this.courses;
    },

    findCourseIndex(code) {
      return this.courses.findIndex(course => course.code === code);
    },

    addNote(code, note) {
      let courseIndex = this.findCourseIndex(code);
      if (courseIndex === -1) return;
  
      let courseObj = this.courses[courseIndex];
      if (Object.hasOwn(courseObj, 'note')) {
        courseObj.note += `; ${note}`;
      } else {
        courseObj.note = note;
      }
    },

    updateNote(code, note) {
      let courseIndex = this.findCourseIndex(code);
      if (courseIndex === -1) return;

      let courseObj = this.courses[courseIndex];
      courseObj.note = note;
    },

    viewNotes() {
      this.courses.forEach(course => {
        if (Object.hasOwn(course, 'note')) {
          console.log(`${course.name}: ` + `${course.note}`);
        }
      });
    },
  }
}

let foo = createStudent('Foo', '1st');
foo.info();
// "Foo is a 1st year student"
foo.listCourses();
// [];
foo.addCourse({ name: 'Math', code: 101 });
foo.addCourse({ name: 'Advanced Math', code: 102 });
foo.listCourses();
// [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
foo.addNote(101, 'Fun course');
foo.addNote(101, 'Remember to study for algebra');
foo.viewNotes();
// "Math: Fun course; Remember to study for algebra"
foo.addNote(102, 'Difficult subject');
foo.viewNotes();
// "Math: Fun course; Remember to study for algebra"
// "Advance Math: Difficult subject"
foo.updateNote(101, 'Fun course');
foo.viewNotes();
// // "Math: Fun course"
// // "Advanced Math: Difficult subject"
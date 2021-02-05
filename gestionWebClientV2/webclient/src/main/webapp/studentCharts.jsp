
<!-- header -->
<%@include file="header.jsp"%>
<!-- Navigation-->
<%@include file="menuhaut.jsp"%>

<style>
.card {
  position: relative;
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #fff;
  background-clip: border-box;
  border: 1px solid rgba(31, 45, 65, 0.125);
  border-radius: 0.35rem;
}

h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
  margin-bottom: 0.5rem;
  font-weight: 500;
  line-height: 1.2;
  color: #323f52;
}

h1, .h1 {
  font-size: 1.5rem;
}

h2, .h2 {
  font-size: 1.4rem;
}

h3, .h3 {
  font-size: 1.3rem;
}

h4, .h4 {
  font-size: 1.2rem;
}

h5, .h5 {
  font-size: 1.1rem;
}

h6, .h6 {
  font-size: 1rem;
}

.lead {
  font-size: 1.1rem;
  font-weight: 400;
}

.card-body {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1.35rem;
}

.row {
  display: flex;
  flex-wrap: wrap;
}

.col-xxl,
.col-xxl-auto, .col-xxl-12, .col-xxl-11, .col-xxl-10, .col-xxl-9, .col-xxl-8, .col-xxl-7, .col-xxl-6, .col-xxl-5, .col-xxl-4, .col-xxl-3, .col-xxl-2, .col-xxl-1, .col-xl,
.col-xl-auto, .col-xl-12, .col-xl-11, .col-xl-10, .col-xl-9, .col-xl-8, .col-xl-7, .col-xl-6, .col-xl-5, .col-xl-4, .col-xl-3, .col-xl-2, .col-xl-1, .col-lg,
.col-lg-auto, .col-lg-12, .col-lg-11, .col-lg-10, .col-lg-9, .col-lg-8, .col-lg-7, .col-lg-6, .col-lg-5, .col-lg-4, .col-lg-3, .col-lg-2, .col-lg-1, .col-md,
.col-md-auto, .col-md-12, .col-md-11, .col-md-10, .col-md-9, .col-md-8, .col-md-7, .col-md-6, .col-md-5, .col-md-4, .col-md-3, .col-md-2, .col-md-1, .col-sm,
.col-sm-auto, .col-sm-12, .col-sm-11, .col-sm-10, .col-sm-9, .col-sm-8, .col-sm-7, .col-sm-6, .col-sm-5, .col-sm-4, .col-sm-3, .col-sm-2, .col-sm-1, .col,
.col-auto, .col-12, .col-11, .col-10, .col-9, .col-8, .col-7, .col-6, .col-5, .col-4, .col-3, .col-2, .col-1 {
  position: relative;
  width: 100%;
  padding-right: 0.75rem;
  padding-left: 0.75rem;
}

.col {
  flex-basis: 0;
  flex-grow: 1;
  min-width: 0;
  max-width: 100%;
}

.row-cols-1 > * {
  flex: 0 0 100%;
  max-width: 100%;
}

.row-cols-2 > * {
  flex: 0 0 50%;
  max-width: 50%;
}

.row-cols-3 > * {
  flex: 0 0 33.3333333333%;
  max-width: 33.3333333333%;
}

.row-cols-4 > * {
  flex: 0 0 25%;
  max-width: 25%;
}

.row-cols-5 > * {
  flex: 0 0 20%;
  max-width: 20%;
}

.row-cols-6 > * {
  flex: 0 0 16.6666666667%;
  max-width: 16.6666666667%;
}

.col-auto {
  flex: 0 0 auto;
  width: auto;
  max-width: 100%;
}

.col-1 {
  flex: 0 0 8.3333333333%;
  max-width: 8.3333333333%;
}

.col-2 {
  flex: 0 0 16.6666666667%;
  max-width: 16.6666666667%;
}

.col-3 {
  flex: 0 0 25%;
  max-width: 25%;
}

.col-4 {
  flex: 0 0 33.3333333333%;
  max-width: 33.3333333333%;
}

.col-5 {
  flex: 0 0 41.6666666667%;
  max-width: 41.6666666667%;
}

.col-6 {
  flex: 0 0 50%;
  max-width: 50%;
}

.col-7 {
  flex: 0 0 58.3333333333%;
  max-width: 58.3333333333%;
}

.col-8 {
  flex: 0 0 66.6666666667%;
  max-width: 66.6666666667%;
}

.col-9 {
  flex: 0 0 75%;
  max-width: 75%;
}

.col-10 {
  flex: 0 0 83.3333333333%;
  max-width: 83.3333333333%;
}

.col-11 {
  flex: 0 0 91.6666666667%;
  max-width: 91.6666666667%;
}

.col-12 {
  flex: 0 0 100%;
  max-width: 100%;
}

.table {
  width: 100%;
  margin-bottom: 1rem;
  color: #687281;
}
.table th,
.table td {
  padding: 0.75rem;
  vertical-align: top;
  border-top: 1px solid #e3e6ec;
}
.table thead th {
  vertical-align: bottom;
  border-bottom: 2px solid #e3e6ec;
}
.table tbody + tbody {
  border-top: 2px solid #e3e6ec;
}

.table-sm th,
.table-sm td {
  padding: 0.3rem;
}

.table-bordered {
  border: 1px solid #e3e6ec;
}
.table-bordered th,
.table-bordered td {
  border: 1px solid #e3e6ec;
}
.table-bordered thead th,
.table-bordered thead td {
  border-bottom-width: 2px;
}

.table-borderless th,
.table-borderless td,
.table-borderless thead th,
.table-borderless tbody + tbody {
  border: 0;
}

.table-striped tbody tr:nth-of-type(odd) {
  background-color: rgba(0, 0, 0, 0.05);
}

.table-hover tbody tr:hover {
  color: #687281;
  background-color: rgba(227, 230, 236, 0.25);
}

.table-primary,
.table-primary > th,
.table-primary > td {
  background-color: #b8d3fb;
}
.table-primary th,
.table-primary td,
.table-primary thead th,
.table-primary tbody + tbody {
  border-color: #7aadf8;
}

.table-hover .table-primary:hover {
  background-color: #a0c4fa;
}
.table-hover .table-primary:hover > td,
.table-hover .table-primary:hover > th {
  background-color: #a0c4fa;
}

.table-secondary,
.table-secondary > th,
.table-secondary > td {
  background-color: #d5b8ef;
}
.table-secondary th,
.table-secondary td,
.table-secondary thead th,
.table-secondary tbody + tbody {
  border-color: #b17ae2;
}

.table-hover .table-secondary:hover {
  background-color: #c9a3ea;
}
.table-hover .table-secondary:hover > td,
.table-hover .table-secondary:hover > th {
  background-color: #c9a3ea;
}

.table-success,
.table-success > th,
.table-success > td {
  background-color: #b8e8d5;
}
.table-success th,
.table-success td,
.table-success thead th,
.table-success tbody + tbody {
  border-color: #7ad4b1;
}

.table-hover .table-success:hover {
  background-color: #a5e2ca;
}
.table-hover .table-success:hover > td,
.table-hover .table-success:hover > th {
  background-color: #a5e2ca;
}

.table-info,
.table-info > th,
.table-info > td {
  background-color: #b8f2f3;
}
.table-info th,
.table-info td,
.table-info thead th,
.table-info tbody + tbody {
  border-color: #7ae6e9;
}

.table-hover .table-info:hover {
  background-color: #a2eeef;
}
.table-hover .table-info:hover > td,
.table-hover .table-info:hover > th {
  background-color: #a2eeef;
}

.table-warning,
.table-warning > th,
.table-warning > td {
  background-color: #fce5b8;
}
.table-warning th,
.table-warning td,
.table-warning thead th,
.table-warning tbody + tbody {
  border-color: #f9ce7a;
}

.table-hover .table-warning:hover {
  background-color: #fbdca0;
}
.table-hover .table-warning:hover > td,
.table-hover .table-warning:hover > th {
  background-color: #fbdca0;
}

.table-danger,
.table-danger > th,
.table-danger > td {
  background-color: #f9bdb8;
}
.table-danger th,
.table-danger td,
.table-danger thead th,
.table-danger tbody + tbody {
  border-color: #f3857a;
}

.table-hover .table-danger:hover {
  background-color: #f7a7a0;
}
.table-hover .table-danger:hover > td,
.table-hover .table-danger:hover > th {
  background-color: #f7a7a0;
}

.table-light,
.table-light > th,
.table-light > td {
  background-color: #fbfcfd;
}
.table-light th,
.table-light td,
.table-light thead th,
.table-light tbody + tbody {
  border-color: #f7f9fc;
}

.table-hover .table-light:hover {
  background-color: #eaeff5;
}
.table-hover .table-light:hover > td,
.table-hover .table-light:hover > th {
  background-color: #eaeff5;
}

.table-dark,
.table-dark > th,
.table-dark > td {
  background-color: #c0c4ca;
}
.table-dark th,
.table-dark td,
.table-dark thead th,
.table-dark tbody + tbody {
  border-color: #8b929c;
}

.table-hover .table-dark:hover {
  background-color: #b2b7be;
}
.table-hover .table-dark:hover > td,
.table-hover .table-dark:hover > th {
  background-color: #b2b7be;
}

.table-black,
.table-black > th,
.table-black > td {
  background-color: #b8b8b8;
}
.table-black th,
.table-black td,
.table-black thead th,
.table-black tbody + tbody {
  border-color: #7a7a7a;
}

.table-hover .table-black:hover {
  background-color: #ababab;
}
.table-hover .table-black:hover > td,
.table-hover .table-black:hover > th {
  background-color: #ababab;
}

.table-white,
.table-white > th,
.table-white > td {
  background-color: white;
}
.table-white th,
.table-white td,
.table-white thead th,
.table-white tbody + tbody {
  border-color: white;
}

.table-hover .table-white:hover {
  background-color: #f2f2f2;
}
.table-hover .table-white:hover > td,
.table-hover .table-white:hover > th {
  background-color: #f2f2f2;
}

.table-red,
.table-red > th,
.table-red > td {
  background-color: #f9bdb8;
}
.table-red th,
.table-red td,
.table-red thead th,
.table-red tbody + tbody {
  border-color: #f3857a;
}

.table-hover .table-red:hover {
  background-color: #f7a7a0;
}
.table-hover .table-red:hover > td,
.table-hover .table-red:hover > th {
  background-color: #f7a7a0;
}

.table-orange,
.table-orange > th,
.table-orange > td {
  background-color: #fdd4b8;
}
.table-orange th,
.table-orange td,
.table-orange thead th,
.table-orange tbody + tbody {
  border-color: #fbae7a;
}

.table-hover .table-orange:hover {
  background-color: #fcc59f;
}
.table-hover .table-orange:hover > td,
.table-hover .table-orange:hover > th {
  background-color: #fcc59f;
}

.table-yellow,
.table-yellow > th,
.table-yellow > td {
  background-color: #fce5b8;
}
.table-yellow th,
.table-yellow td,
.table-yellow thead th,
.table-yellow tbody + tbody {
  border-color: #f9ce7a;
}

.table-hover .table-yellow:hover {
  background-color: #fbdca0;
}
.table-hover .table-yellow:hover > td,
.table-hover .table-yellow:hover > th {
  background-color: #fbdca0;
}

.table-green,
.table-green > th,
.table-green > td {
  background-color: #b8e8d5;
}
.table-green th,
.table-green td,
.table-green thead th,
.table-green tbody + tbody {
  border-color: #7ad4b1;
}

.table-hover .table-green:hover {
  background-color: #a5e2ca;
}
.table-hover .table-green:hover > td,
.table-hover .table-green:hover > th {
  background-color: #a5e2ca;
}

.table-teal,
.table-teal > th,
.table-teal > td {
  background-color: #b8ece1;
}
.table-teal th,
.table-teal td,
.table-teal thead th,
.table-teal tbody + tbody {
  border-color: #7adbc7;
}

.table-hover .table-teal:hover {
  background-color: #a4e7d9;
}
.table-hover .table-teal:hover > td,
.table-hover .table-teal:hover > th {
  background-color: #a4e7d9;
}

.table-cyan,
.table-cyan > th,
.table-cyan > td {
  background-color: #b8f2f3;
}
.table-cyan th,
.table-cyan td,
.table-cyan thead th,
.table-cyan tbody + tbody {
  border-color: #7ae6e9;
}

.table-hover .table-cyan:hover {
  background-color: #a2eeef;
}
.table-hover .table-cyan:hover > td,
.table-hover .table-cyan:hover > th {
  background-color: #a2eeef;
}

.table-blue,
.table-blue > th,
.table-blue > td {
  background-color: #b8d3fb;
}
.table-blue th,
.table-blue td,
.table-blue thead th,
.table-blue tbody + tbody {
  border-color: #7aadf8;
}

.table-hover .table-blue:hover {
  background-color: #a0c4fa;
}
.table-hover .table-blue:hover > td,
.table-hover .table-blue:hover > th {
  background-color: #a0c4fa;
}

.table-indigo,
.table-indigo > th,
.table-indigo > td {
  background-color: #d0b8f9;
}
.table-indigo th,
.table-indigo td,
.table-indigo thead th,
.table-indigo tbody + tbody {
  border-color: #a87af3;
}

.table-hover .table-indigo:hover {
  background-color: #c0a0f7;
}
.table-hover .table-indigo:hover > td,
.table-hover .table-indigo:hover > th {
  background-color: #c0a0f7;
}

.table-purple,
.table-purple > th,
.table-purple > td {
  background-color: #d5b8ef;
}
.table-purple th,
.table-purple td,
.table-purple thead th,
.table-purple tbody + tbody {
  border-color: #b17ae2;
}

.table-hover .table-purple:hover {
  background-color: #c9a3ea;
}
.table-hover .table-purple:hover > td,
.table-hover .table-purple:hover > th {
  background-color: #c9a3ea;
}

.table-pink,
.table-pink > th,
.table-pink > td {
  background-color: #f7b8d1;
}
.table-pink th,
.table-pink td,
.table-pink thead th,
.table-pink tbody + tbody {
  border-color: #f07aa9;
}

.table-hover .table-pink:hover {
  background-color: #f4a1c2;
}
.table-hover .table-pink:hover > td,
.table-hover .table-pink:hover > th {
  background-color: #f4a1c2;
}

.table-red-soft,
.table-red-soft > th,
.table-red-soft > td {
  background-color: #faefef;
}
.table-red-soft th,
.table-red-soft td,
.table-red-soft thead th,
.table-red-soft tbody + tbody {
  border-color: #f6e2e2;
}

.table-hover .table-red-soft:hover {
  background-color: #f4dcdc;
}
.table-hover .table-red-soft:hover > td,
.table-hover .table-red-soft:hover > th {
  background-color: #f4dcdc;
}

.table-orange-soft,
.table-orange-soft > th,
.table-orange-soft > td {
  background-color: #fbf4ef;
}
.table-orange-soft th,
.table-orange-soft td,
.table-orange-soft thead th,
.table-orange-soft tbody + tbody {
  border-color: #f8eae2;
}

.table-hover .table-orange-soft:hover {
  background-color: #f6e6db;
}
.table-hover .table-orange-soft:hover > td,
.table-hover .table-orange-soft:hover > th {
  background-color: #f6e6db;
}

.table-yellow-soft,
.table-yellow-soft > th,
.table-yellow-soft > td {
  background-color: #fbf7ef;
}
.table-yellow-soft th,
.table-yellow-soft td,
.table-yellow-soft thead th,
.table-yellow-soft tbody + tbody {
  border-color: #f7f0e2;
}

.table-hover .table-yellow-soft:hover {
  background-color: #f6eddb;
}
.table-hover .table-yellow-soft:hover > td,
.table-hover .table-yellow-soft:hover > th {
  background-color: #f6eddb;
}

.table-green-soft,
.table-green-soft > th,
.table-green-soft > td {
  background-color: #edf8f5;
}
.table-green-soft th,
.table-green-soft td,
.table-green-soft thead th,
.table-green-soft tbody + tbody {
  border-color: #def1ed;
}

.table-hover .table-green-soft:hover {
  background-color: #dbf1eb;
}
.table-hover .table-green-soft:hover > td,
.table-hover .table-green-soft:hover > th {
  background-color: #dbf1eb;
}

.table-teal-soft,
.table-teal-soft > th,
.table-teal-soft > td {
  background-color: #edf9f8;
}
.table-teal-soft th,
.table-teal-soft td,
.table-teal-soft thead th,
.table-teal-soft tbody + tbody {
  border-color: #def3f1;
}

.table-hover .table-teal-soft:hover {
  background-color: #daf3f1;
}
.table-hover .table-teal-soft:hover > td,
.table-hover .table-teal-soft:hover > th {
  background-color: #daf3f1;
}

.table-cyan-soft,
.table-cyan-soft > th,
.table-cyan-soft > td {
  background-color: #edfafb;
}
.table-cyan-soft th,
.table-cyan-soft td,
.table-cyan-soft thead th,
.table-cyan-soft tbody + tbody {
  border-color: #def5f8;
}

.table-hover .table-cyan-soft:hover {
  background-color: #d8f4f6;
}
.table-hover .table-cyan-soft:hover > td,
.table-hover .table-cyan-soft:hover > th {
  background-color: #d8f4f6;
}

.table-blue-soft,
.table-blue-soft > th,
.table-blue-soft > td {
  background-color: #edf4fd;
}
.table-blue-soft th,
.table-blue-soft td,
.table-blue-soft thead th,
.table-blue-soft tbody + tbody {
  border-color: #deeafb;
}

.table-hover .table-blue-soft:hover {
  background-color: #d6e6fa;
}
.table-hover .table-blue-soft:hover > td,
.table-hover .table-blue-soft:hover > th {
  background-color: #d6e6fa;
}

.table-indigo-soft,
.table-indigo-soft > th,
.table-indigo-soft > td {
  background-color: #f2eefc;
}
.table-indigo-soft th,
.table-indigo-soft td,
.table-indigo-soft thead th,
.table-indigo-soft tbody + tbody {
  border-color: #e7dffa;
}

.table-hover .table-indigo-soft:hover {
  background-color: #e1d8f8;
}
.table-hover .table-indigo-soft:hover > td,
.table-hover .table-indigo-soft:hover > th {
  background-color: #e1d8f8;
}

.table-purple-soft,
.table-purple-soft > th,
.table-purple-soft > td {
  background-color: #f3eefb;
}
.table-purple-soft th,
.table-purple-soft td,
.table-purple-soft thead th,
.table-purple-soft tbody + tbody {
  border-color: #e9dff7;
}

.table-hover .table-purple-soft:hover {
  background-color: #e4d9f6;
}
.table-hover .table-purple-soft:hover > td,
.table-hover .table-purple-soft:hover > th {
  background-color: #e4d9f6;
}

.table-pink-soft,
.table-pink-soft > th,
.table-pink-soft > td {
  background-color: #faeef4;
}
.table-pink-soft th,
.table-pink-soft td,
.table-pink-soft thead th,
.table-pink-soft tbody + tbody {
  border-color: #f6dfeb;
}

.table-hover .table-pink-soft:hover {
  background-color: #f4dae7;
}
.table-hover .table-pink-soft:hover > td,
.table-hover .table-pink-soft:hover > th {
  background-color: #f4dae7;
}

.table-primary-soft,
.table-primary-soft > th,
.table-primary-soft > td {
  background-color: #edf4fd;
}
.table-primary-soft th,
.table-primary-soft td,
.table-primary-soft thead th,
.table-primary-soft tbody + tbody {
  border-color: #deeafb;
}

.table-hover .table-primary-soft:hover {
  background-color: #d6e6fa;
}
.table-hover .table-primary-soft:hover > td,
.table-hover .table-primary-soft:hover > th {
  background-color: #d6e6fa;
}

.table-secondary-soft,
.table-secondary-soft > th,
.table-secondary-soft > td {
  background-color: #f3eefb;
}
.table-secondary-soft th,
.table-secondary-soft td,
.table-secondary-soft thead th,
.table-secondary-soft tbody + tbody {
  border-color: #e9dff7;
}

.table-hover .table-secondary-soft:hover {
  background-color: #e4d9f6;
}
.table-hover .table-secondary-soft:hover > td,
.table-hover .table-secondary-soft:hover > th {
  background-color: #e4d9f6;
}

.table-success-soft,
.table-success-soft > th,
.table-success-soft > td {
  background-color: #edf8f5;
}
.table-success-soft th,
.table-success-soft td,
.table-success-soft thead th,
.table-success-soft tbody + tbody {
  border-color: #def1ed;
}

.table-hover .table-success-soft:hover {
  background-color: #dbf1eb;
}
.table-hover .table-success-soft:hover > td,
.table-hover .table-success-soft:hover > th {
  background-color: #dbf1eb;
}

.table-info-soft,
.table-info-soft > th,
.table-info-soft > td {
  background-color: #edfafb;
}
.table-info-soft th,
.table-info-soft td,
.table-info-soft thead th,
.table-info-soft tbody + tbody {
  border-color: #def5f8;
}

.table-hover .table-info-soft:hover {
  background-color: #d8f4f6;
}
.table-hover .table-info-soft:hover > td,
.table-hover .table-info-soft:hover > th {
  background-color: #d8f4f6;
}

.table-warning-soft,
.table-warning-soft > th,
.table-warning-soft > td {
  background-color: #fbf7ef;
}
.table-warning-soft th,
.table-warning-soft td,
.table-warning-soft thead th,
.table-warning-soft tbody + tbody {
  border-color: #f7f0e2;
}

.table-hover .table-warning-soft:hover {
  background-color: #f6eddb;
}
.table-hover .table-warning-soft:hover > td,
.table-hover .table-warning-soft:hover > th {
  background-color: #f6eddb;
}

.table-danger-soft,
.table-danger-soft > th,
.table-danger-soft > td {
  background-color: #faefef;
}
.table-danger-soft th,
.table-danger-soft td,
.table-danger-soft thead th,
.table-danger-soft tbody + tbody {
  border-color: #f6e2e2;
}

.table-hover .table-danger-soft:hover {
  background-color: #f4dcdc;
}
.table-hover .table-danger-soft:hover > td,
.table-hover .table-danger-soft:hover > th {
  background-color: #f4dcdc;
}

.table-active,
.table-active > th,
.table-active > td {
  background-color: rgba(227, 230, 236, 0.25);
}

.table-hover .table-active:hover {
  background-color: rgba(212, 216, 226, 0.25);
}
.table-hover .table-active:hover > td,
.table-hover .table-active:hover > th {
  background-color: rgba(212, 216, 226, 0.25);
}

.table .thead-dark th {
  color: rgba(255, 255, 255, 0.65);
  background-color: #323f52;
  border-color: #40516a;
}
.table .thead-light th {
  color: #485260;
  background-color: #e3e6ec;
  border-color: #e3e6ec;
}

.table-dark {
  color: rgba(255, 255, 255, 0.65);
  background-color: #323f52;
}
.table-dark th,
.table-dark td,
.table-dark thead th {
  border-color: #40516a;
}
.table-dark.table-bordered {
  border: 0;
}
.table-dark.table-striped tbody tr:nth-of-type(odd) {
  background-color: rgba(255, 255, 255, 0.05);
}
.table-dark.table-hover tbody tr:hover {
  color: rgba(255, 255, 255, 0.65);
  background-color: rgba(255, 255, 255, 0.075);
}

@media (max-width: 575.98px) {
  .table-responsive-sm {
    display: block;
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
  }
  .table-responsive-sm > .table-bordered {
    border: 0;
  }
}
@media (max-width: 767.98px) {
  .table-responsive-md {
    display: block;
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
  }
  .table-responsive-md > .table-bordered {
    border: 0;
  }
}
@media (max-width: 991.98px) {
  .table-responsive-lg {
    display: block;
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
  }
  .table-responsive-lg > .table-bordered {
    border: 0;
  }
}
@media (max-width: 1199.98px) {
  .table-responsive-xl {
    display: block;
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
  }
  .table-responsive-xl > .table-bordered {
    border: 0;
  }
}
@media (max-width: 1499.98px) {
  .table-responsive-xxl {
    display: block;
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
  }
  .table-responsive-xxl > .table-bordered {
    border: 0;
  }
}
.table-responsive, .datatable {
  display: block;
  width: 100%;
  overflow-x: auto;
  -webkit-overflow-scrolling: touch;
}
.table-responsive > .table-bordered, .datatable > .table-bordered {
  border: 0;
}

.shadow-lg {
  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;
}

</style>


<div class="container" style="margin-top: 200px;">
	<div class="row">
		<div class="col">
			<div class="card shadow-lg">
				<div class="card-body">
					<h1>Répartition des niveaux</h1>
					<div id="canvas-holder" style="100%">
						<canvas id="chart-area"></canvas>
					</div>	
				</div>
			</div>
		</div>
		<div class="col-8">
			<div class="card shadow-lg">
				<div class="card-body">
					<h1>élèves par groupe de niveaux</h1>
					<table border="1">
						<thead>
							<tr>
								<td>Mauvais</td>
								<td>Moyens</td>
								<td>Bons</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><%= session.getAttribute("getLevelMauvais") %></td>
								<td><%= session.getAttribute("getLevelMoyens") %></td>
								<td><%= session.getAttribute("getLevelBons") %></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>	
	</div>	
</div>

<script>
	var config = {
		type: 'pie',
		data: {
			datasets: [{
				data: [
					<%= session.getAttribute("bon") %>,
					<%= session.getAttribute("moyen") %>,
					<%= session.getAttribute("mauvais") %>,
				],
				backgroundColor: [
					'green',
					'orange',
					'red',
				],
				label: 'Dataset 1'
			}],
			labels: [
				'Bons',
				'Moyens',
				'Mauvais',
			]
		},
		options: {
			responsive: true
		}
	};

	window.onload = function() {
		var ctx = document.getElementById('chart-area').getContext('2d');
		window.myPie = new Chart(ctx, config);
	};
</script>

<!-- Footer -->
<%@include file="footer.jsp"%>


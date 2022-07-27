:- multifile('<http://www.example.org/AdministrativeStaff>'/1).
:- multifile('<http://www.example.org/Article>'/1).
:- multifile('<http://www.example.org/AssistantProfessor>'/1).
:- multifile('<http://www.example.org/AssociateProfessor>'/1).
:- multifile('<http://www.example.org/Book>'/1).
:- multifile('<http://www.example.org/Chair>'/1).
:- multifile('<http://www.example.org/ClericalStaff>'/1).
:- multifile('<http://www.example.org/College>'/1).
:- multifile('<http://www.example.org/ConferencePaper>'/1).
:- multifile('<http://www.example.org/Course>'/1).
:- multifile('<http://www.example.org/Dean>'/1).
:- multifile('<http://www.example.org/Department>'/1).
:- multifile('<http://www.example.org/Director>'/1).
:- multifile('<http://www.example.org/Employee>'/1).
:- multifile('<http://www.example.org/Faculty>'/1).
:- multifile('<http://www.example.org/FullProfessor>'/1).
:- multifile('<http://www.example.org/GraduateCourse>'/1).
:- multifile('<http://www.example.org/GraduateStudent>'/1).
:- multifile('<http://www.example.org/Institute>'/1).
:- multifile('<http://www.example.org/JournalArticle>'/1).
:- multifile('<http://www.example.org/Lecturer>'/1).
:- multifile('<http://www.example.org/Manual>'/1).
:- multifile('<http://www.example.org/Organization>'/1).
:- multifile('<http://www.example.org/PostDoc>'/1).
:- multifile('<http://www.example.org/Professor>'/1).
:- multifile('<http://www.example.org/Program>'/1).
:- multifile('<http://www.example.org/Publication>'/1).
:- multifile('<http://www.example.org/Research>'/1).
:- multifile('<http://www.example.org/ResearchAssistant>'/1).
:- multifile('<http://www.example.org/ResearchGroup>'/1).
:- multifile('<http://www.example.org/Schedule>'/1).
:- multifile('<http://www.example.org/Software>'/1).
:- multifile('<http://www.example.org/Specification>'/1).
:- multifile('<http://www.example.org/Student>'/1).
:- multifile('<http://www.example.org/SystemsStaff>'/1).
:- multifile('<http://www.example.org/TeachingAssistant>'/1).
:- multifile('<http://www.example.org/TechnicalReport>'/1).
:- multifile('<http://www.example.org/UndergraduateStudent>'/1).
:- multifile('<http://www.example.org/University>'/1).
:- multifile('<http://www.example.org/UnofficialPublication>'/1).
:- multifile('<http://www.example.org/VisitingProfessor>'/1).
:- multifile('<http://www.example.org/Work>'/1).

:- multifile('<http://www.example.org/advisor>'/2).
:- multifile('<http://www.example.org/affiliatedOrganizationOf>'/2).
:- multifile('<http://www.example.org/affiliateOf>'/2).
:- multifile('<http://www.example.org/age>'/2).
:- multifile('<http://www.example.org/degreeFrom>'/2).
:- multifile('<http://www.example.org/directSubOrganizationOf>'/2).
:- multifile('<http://www.example.org/doctoralDegreeFrom>'/2).
:- multifile('<http://www.example.org/emailAddress>'/2).
:- multifile('<http://www.example.org/hasAlumnus>'/2).
:- multifile('<http://www.example.org/headOf>'/2).
:- multifile('<http://www.example.org/listedCourse>'/2).
:- multifile('<http://www.example.org/mastersDegreeFrom>'/2).
:- multifile('<http://www.example.org/memberOf>'/2).
:- multifile('<http://www.example.org/name>'/2).
:- multifile('<http://www.example.org/orgPublication>'/2).
:- multifile('<http://www.example.org/publicationAuthor>'/2).
:- multifile('<http://www.example.org/publicationDate>'/2).
:- multifile('<http://www.example.org/publicationResearch>'/2).
:- multifile('<http://www.example.org/researchInterest>'/2).
:- multifile('<http://www.example.org/researchProject>'/2).
:- multifile('<http://www.example.org/softwareDocumentation>'/2).
:- multifile('<http://www.example.org/softwareVersion>'/2).
:- multifile('<http://www.example.org/subOrganizationOf>'/2).
:- multifile('<http://www.example.org/takesCourse>'/2).
:- multifile('<http://www.example.org/teacherOf>'/2).
:- multifile('<http://www.example.org/teachingAssistantOf>'/2).
:- multifile('<http://www.example.org/telephone>'/2).
:- multifile('<http://www.example.org/tenured>'/2).
:- multifile('<http://www.example.org/title>'/2).
:- multifile('<http://www.example.org/undergraduateDegreeFrom>'/2).
:- multifile('<http://www.example.org/worksFor>'/2).

'<http://www.example.org/AdministrativeStaff>'(A) :- '<http://www.example.org/ClericalStaff>'(A).
'<http://www.example.org/AdministrativeStaff>'(A) :- '<http://www.example.org/SystemsStaff>'(A).

'<http://www.example.org/Article>'(A) :- '<http://www.example.org/ConferencePaper>'(A).
'<http://www.example.org/Article>'(A) :- '<http://www.example.org/JournalArticle>'(A).
'<http://www.example.org/Article>'(A) :- '<http://www.example.org/TechnicalReport>'(A).

'<http://www.example.org/Chair>'(A) :- '<http://www.example.org/headOf>'(A, B), '<http://www.example.org/Department>'(B).

'<http://www.example.org/Course>'(A) :- '<http://www.example.org/GraduateCourse>'(A).
'<http://www.example.org/Course>'(A) :- '<http://www.example.org/listedCourse>'(_, A).
'<http://www.example.org/Course>'(A) :- '<http://www.example.org/teacherOf>'(_, A).
'<http://www.example.org/Course>'(A) :- '<http://www.example.org/teachingAssistantOf>'(_, A).

'<http://www.example.org/Dean>'(A) :- '<http://www.example.org/headOf>'(A, B), '<http://www.example.org/College>'(B).

'<http://www.example.org/Director>'(A) :- '<http://www.example.org/headOf>'(A, B), '<http://www.example.org/Program>'(B).

'<http://www.example.org/Employee>'(A) :- '<http://www.example.org/AdministrativeStaff>'(A).
'<http://www.example.org/Employee>'(A) :- '<http://www.example.org/Faculty>'(A).
'<http://www.example.org/Employee>'(A) :- '<http://www.example.org/worksFor>'(A, B), '<http://www.example.org/Organization>'(B).

'<http://www.example.org/Faculty>'(A) :- '<http://www.example.org/Lecturer>'(A).
'<http://www.example.org/Faculty>'(A) :- '<http://www.example.org/PostDoc>'(A).
'<http://www.example.org/Faculty>'(A) :- '<http://www.example.org/Professor>'(A).
'<http://www.example.org/Faculty>'(A) :- '<http://www.example.org/teacherOf>'(A, _).

'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/affiliatedOrganizationOf>'(_, A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/affiliatedOrganizationOf>'(A, _).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/affiliateOf>'(A, _).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/College>'(A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/Department>'(A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/Institute>'(A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/memberOf>'(_, A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/orgPublication>'(A, _).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/Program>'(A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/ResearchGroup>'(A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/directSubOrganizationOf>'(_, A).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/directSubOrganizationOf>'(A, _).
'<http://www.example.org/Organization>'(A) :- '<http://www.example.org/University>'(A).

'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/advisor>'(_, A).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/AssistantProfessor>'(A).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/AssociateProfessor>'(A).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/Chair>'(A).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/Dean>'(A).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/FullProfessor>'(A).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/tenured>'(A, _).
'<http://www.example.org/Professor>'(A) :- '<http://www.example.org/VisitingProfessor>'(A).

'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/Article>'(A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/Book>'(A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/Manual>'(A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/orgPublication>'(_, A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/publicationAuthor>'(A, _).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/publicationDate>'(A, _).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/publicationResearch>'(A, _).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/Software>'(A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/softwareDocumentation>'(_, A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/Specification>'(A).
'<http://www.example.org/Publication>'(A) :- '<http://www.example.org/UnofficialPublication>'(A).

'<http://www.example.org/Research>'(A) :- '<http://www.example.org/publicationResearch>'(_, A).
'<http://www.example.org/Research>'(A) :- '<http://www.example.org/researchProject>'(_, A).

'<http://www.example.org/ResearchGroup>'(A) :- '<http://www.example.org/researchProject>'(A, _).

'<http://www.example.org/Schedule>'(A) :- '<http://www.example.org/listedCourse>'(A, _).

'<http://www.example.org/Software>'(A) :- '<http://www.example.org/softwareDocumentation>'(A, _).
'<http://www.example.org/Software>'(A) :- '<http://www.example.org/softwareVersion>'(A, _).

'<http://www.example.org/Student>'(A) :- '<http://www.example.org/takesCourse>'(A, B), '<http://www.example.org/Course>'(B).
'<http://www.example.org/Student>'(A) :- '<http://www.example.org/UndergraduateStudent>'(A).

'<http://www.example.org/TeachingAssistant>'(A) :- '<http://www.example.org/teachingAssistantOf>'(A, B), '<http://www.example.org/Course>'(B).
'<http://www.example.org/TeachingAssistant>'(A) :- '<http://www.example.org/teachingAssistantOf>'(A, _).

'<http://www.example.org/University>'(A) :- '<http://www.example.org/degreeFrom>'(_, A).
'<http://www.example.org/University>'(A) :- '<http://www.example.org/doctoralDegreeFrom>'(_, A).
'<http://www.example.org/University>'(A) :- '<http://www.example.org/hasAlumnus>'(A, _).
'<http://www.example.org/University>'(A) :- '<http://www.example.org/mastersDegreeFrom>'(_, A).
'<http://www.example.org/University>'(A) :- '<http://www.example.org/undergraduateDegreeFrom>'(_, A).

'<http://www.example.org/Work>'(A) :- '<http://www.example.org/Course>'(A).
'<http://www.example.org/Work>'(A) :- '<http://www.example.org/Research>'(A).

'<http://www.example.org/degreeFrom>'(A, B) :- '<http://www.example.org/doctoralDegreeFrom>'(A, B).
'<http://www.example.org/degreeFrom>'(A, B) :- '<http://www.example.org/mastersDegreeFrom>'(A, B).
'<http://www.example.org/degreeFrom>'(A, B) :- '<http://www.example.org/undergraduateDegreeFrom>'(A, B).

'<http://www.example.org/hasAlumnus>'(A, B) :- '<http://www.example.org/degreeFrom>'(B, A).

'<http://www.example.org/memberOf>'(A, B) :- '<http://www.example.org/worksFor>'(A, B).

'<http://www.example.org/worksFor>'(A, B) :- '<http://www.example.org/headOf>'(A, B).

'<http://www.example.org/subOrganizationOf>'(A, B) :- '<http://www.example.org/directSubOrganizationOf>'(A, B).
'<http://www.example.org/subOrganizationOf>'(A, C) :- '<http://www.example.org/directSubOrganizationOf>'(A, B), '<http://www.example.org/subOrganizationOf>'(B, C).

% query

query('<http://www.example.org/AdministrativeStaff>'(_A)).
query('<http://www.example.org/Article>'(_A)).
query('<http://www.example.org/AssistantProfessor>'(_A)).
query('<http://www.example.org/AssociateProfessor>'(_A)).
query('<http://www.example.org/Book>'(_A)).
query('<http://www.example.org/Chair>'(_A)).
query('<http://www.example.org/ClericalStaff>'(_A)).
query('<http://www.example.org/College>'(_A)).
query('<http://www.example.org/ConferencePaper>'(_A)).
query('<http://www.example.org/Course>'(_A)).
query('<http://www.example.org/Dean>'(_A)).
query('<http://www.example.org/Department>'(_A)).
query('<http://www.example.org/Director>'(_A)).
query('<http://www.example.org/Employee>'(_A)).
query('<http://www.example.org/Faculty>'(_A)).
query('<http://www.example.org/FullProfessor>'(_A)).
query('<http://www.example.org/GraduateCourse>'(_A)).
query('<http://www.example.org/GraduateStudent>'(_A)).
query('<http://www.example.org/Institute>'(_A)).
query('<http://www.example.org/JournalArticle>'(_A)).
query('<http://www.example.org/Lecturer>'(_A)).
query('<http://www.example.org/Manual>'(_A)).
query('<http://www.example.org/Organization>'(_A)).
query('<http://www.example.org/PostDoc>'(_A)).
query('<http://www.example.org/Professor>'(_A)).
query('<http://www.example.org/Program>'(_A)).
query('<http://www.example.org/Publication>'(_A)).
query('<http://www.example.org/Research>'(_A)).
query('<http://www.example.org/ResearchAssistant>'(_A)).
query('<http://www.example.org/ResearchGroup>'(_A)).
query('<http://www.example.org/Schedule>'(_A)).
query('<http://www.example.org/Software>'(_A)).
query('<http://www.example.org/Specification>'(_A)).
query('<http://www.example.org/Student>'(_A)).
query('<http://www.example.org/SystemsStaff>'(_A)).
query('<http://www.example.org/TeachingAssistant>'(_A)).
query('<http://www.example.org/TechnicalReport>'(_A)).
query('<http://www.example.org/UndergraduateStudent>'(_A)).
query('<http://www.example.org/University>'(_A)).
query('<http://www.example.org/UnofficialPublication>'(_A)).
query('<http://www.example.org/VisitingProfessor>'(_A)).
query('<http://www.example.org/Work>'(_A)).

query('<http://www.example.org/advisor>'(_A, _B)).
query('<http://www.example.org/affiliatedOrganizationOf>'(_A, _B)).
query('<http://www.example.org/affiliateOf>'(_A, _B)).
query('<http://www.example.org/age>'(_A, _B)).
query('<http://www.example.org/degreeFrom>'(_A, _B)).
query('<http://www.example.org/directSubOrganizationOf>'(_A, _B)).
query('<http://www.example.org/doctoralDegreeFrom>'(_A, _B)).
query('<http://www.example.org/emailAddress>'(_A, _B)).
query('<http://www.example.org/hasAlumnus>'(_A, _B)).
query('<http://www.example.org/headOf>'(_A, _B)).
query('<http://www.example.org/listedCourse>'(_A, _B)).
query('<http://www.example.org/mastersDegreeFrom>'(_A, _B)).
query('<http://www.example.org/memberOf>'(_A, _B)).
query('<http://www.example.org/name>'(_A, _B)).
query('<http://www.example.org/orgPublication>'(_A, _B)).
query('<http://www.example.org/publicationAuthor>'(_A, _B)).
query('<http://www.example.org/publicationDate>'(_A, _B)).
query('<http://www.example.org/publicationResearch>'(_A, _B)).
query('<http://www.example.org/researchInterest>'(_A, _B)).
query('<http://www.example.org/researchProject>'(_A, _B)).
query('<http://www.example.org/softwareDocumentation>'(_A, _B)).
query('<http://www.example.org/softwareVersion>'(_A, _B)).
query('<http://www.example.org/takesCourse>'(_A, _B)).
query('<http://www.example.org/teacherOf>'(_A, _B)).
query('<http://www.example.org/teachingAssistantOf>'(_A, _B)).
query('<http://www.example.org/telephone>'(_A, _B)).
query('<http://www.example.org/tenured>'(_A, _B)).
query('<http://www.example.org/title>'(_A, _B)).
query('<http://www.example.org/undergraduateDegreeFrom>'(_A, _B)).
query('<http://www.example.org/worksFor>'(_A, _B)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.

:- dynamic('http://www.example.org/advisor_'/2).
:- dynamic('http://www.example.org/doctoralDegreeFrom_'/2).
:- dynamic('http://www.example.org/emailAddress_'/2).
:- dynamic('http://www.example.org/headOf_'/2).
:- dynamic('http://www.example.org/mastersDegreeFrom_'/2).
:- dynamic('http://www.example.org/memberOf_'/2).
:- dynamic('http://www.example.org/name_'/2).
:- dynamic('http://www.example.org/publicationAuthor_'/2).
:- dynamic('http://www.example.org/researchInterest_'/2).
:- dynamic('http://www.example.org/subOrganizationOf_'/2).
:- dynamic('http://www.example.org/takesCourse_'/2).
:- dynamic('http://www.example.org/teacherOf_'/2).
:- dynamic('http://www.example.org/teachingAssistantOf_'/2).
:- dynamic('http://www.example.org/telephone_'/2).
:- dynamic('http://www.example.org/undergraduateDegreeFrom_'/2).
:- dynamic('http://www.example.org/worksFor_'/2).
:- dynamic('http://www.example.org/hasAlumnus_'/2).
:- dynamic('http://www.example.org/degreeFrom_'/2).
:- dynamic('http://www.example.org/member_'/2).
:- dynamic('http://www.example.org/affiliatedOrganizationOf_'/2).
:- dynamic('http://www.example.org/affiliateOf_'/2).
:- dynamic('http://www.example.org/age_'/2).
:- dynamic('http://www.example.org/listedCourse_'/2).
:- dynamic('http://www.example.org/orgPublication_'/2).
:- dynamic('http://www.example.org/publicationDate_'/2).
:- dynamic('http://www.example.org/publicationResearch_'/2).
:- dynamic('http://www.example.org/researchProject_'/2).
:- dynamic('http://www.example.org/softwareDocumentation_'/2).
:- dynamic('http://www.example.org/softwareVersion_'/2).
:- dynamic('http://www.example.org/tenured_'/2).
:- dynamic('http://www.example.org/title_'/2).
:- dynamic('http://www.example.org/AssistantProfessor_'/1).
:- dynamic('http://www.example.org/AssociateProfessor_'/1).
:- dynamic('http://www.example.org/Course_'/1).
:- dynamic('http://www.example.org/Department_'/1).
:- dynamic('http://www.example.org/FullProfessor_'/1).
:- dynamic('http://www.example.org/GraduateCourse_'/1).
:- dynamic('http://www.example.org/GraduateStudent_'/1).
:- dynamic('http://www.example.org/Lecturer_'/1).
:- dynamic('http://www.example.org/Publication_'/1).
:- dynamic('http://www.example.org/ResearchAssistant_'/1).
:- dynamic('http://www.example.org/ResearchGroup_'/1).
:- dynamic('http://www.example.org/TeachingAssistant_'/1).
:- dynamic('http://www.example.org/UndergraduateStudent_'/1).
:- dynamic('http://www.example.org/University_'/1).
:- dynamic('http://www.example.org/Employee_'/1).
:- dynamic('http://www.example.org/Person_'/1).
:- dynamic('http://www.example.org/Professor_'/1).
:- dynamic('http://www.example.org/Organization_'/1).
:- dynamic('http://www.example.org/AdministrativeStaff_'/1).
:- dynamic('http://www.example.org/Article_'/1).
:- dynamic('http://www.example.org/Work_'/1).
:- dynamic('http://www.example.org/College_'/1).
:- dynamic('http://www.example.org/Program_'/1).
:- dynamic('http://www.example.org/Dean_'/1).
:- dynamic('http://www.example.org/Faculty_'/1).
:- dynamic('http://www.example.org/Schedule_'/1).
:- dynamic('http://www.example.org/Chair_'/1).
:- dynamic('http://www.example.org/Director_'/1).
:- dynamic('http://www.example.org/Student_'/1).
:- dynamic('http://www.example.org/Book_'/1).
:- dynamic('http://www.example.org/ClericalStaff_'/1).
:- dynamic('http://www.example.org/ConferencePaper_'/1).
:- dynamic('http://www.example.org/Institute_'/1).
:- dynamic('http://www.example.org/JournalArticle_'/1).
:- dynamic('http://www.example.org/Manual_'/1).
:- dynamic('http://www.example.org/PostDoc_'/1).
:- dynamic('http://www.example.org/Research_'/1).
:- dynamic('http://www.example.org/Software_'/1).
:- dynamic('http://www.example.org/Specification_'/1).
:- dynamic('http://www.example.org/SystemsStaff_'/1).
:- dynamic('http://www.example.org/TechnicalReport_'/1).
:- dynamic('http://www.example.org/UnofficialPublication_'/1).
:- dynamic('http://www.example.org/VisitingProfessor_'/1).

'http://www.example.org/AdministrativeStaff'(A) :- 'http://www.example.org/ClericalStaff_'(A).
'http://www.example.org/AdministrativeStaff'(A) :- 'http://www.example.org/SystemsStaff_'(A).

'http://www.example.org/advisor'(A, B) :- 'http://www.example.org/advisor_'(A, B).

'http://www.example.org/Article'(A) :- 'http://www.example.org/ConferencePaper'(A).
'http://www.example.org/Article'(A) :- 'http://www.example.org/JournalArticle'(A).
'http://www.example.org/Article'(A) :- 'http://www.example.org/TechnicalReport'(A).

'http://www.example.org/AssistantProfessor'(A) :- 'http://www.example.org/AssistantProfessor_'(A).

'http://www.example.org/AssociateProfessor'(A) :- 'http://www.example.org/AssociateProfessor_'(A).

'http://www.example.org/Chair'(A) :- 'http://www.example.org/headOf'(A, B), 'http://www.example.org/Department'(B).

'http://www.example.org/Course'(A) :- 'http://www.example.org/Course_'(A).
'http://www.example.org/Course'(A) :- 'http://www.example.org/GraduateCourse'(A).
'http://www.example.org/Course'(A) :- 'http://www.example.org/listedCourse_'(_, A).
'http://www.example.org/Course'(A) :- 'http://www.example.org/teacherOf'(_, A).
'http://www.example.org/Course'(A) :- 'http://www.example.org/teachingAssistantOf'(_, A).

'http://www.example.org/Dean'(A) :- 'http://www.example.org/headOf'(A, B), 'http://www.example.org/College_'(B).

'http://www.example.org/degreeFrom'(A, B) :- 'http://www.example.org/doctoralDegreeFrom'(A, B).
'http://www.example.org/degreeFrom'(A, B) :- 'http://www.example.org/hasAlumnus'(B, A).
'http://www.example.org/degreeFrom'(A, B) :- 'http://www.example.org/mastersDegreeFrom'(A, B).
'http://www.example.org/degreeFrom'(A, B) :- 'http://www.example.org/undergraduateDegreeFrom'(A, B).

'http://www.example.org/Department'(A) :- 'http://www.example.org/Department_'(A).

'http://www.example.org/Director'(A) :- 'http://www.example.org/Person'(A), 'http://www.example.org/headOf'(A, B), 'http://www.example.org/Program'(B).

'http://www.example.org/doctoralDegreeFrom'(A, B) :- 'http://www.example.org/doctoralDegreeFrom_'(A, B).

'http://www.example.org/emailAddress'(A, B) :- 'http://www.example.org/emailAddress_'(A, B).

'http://www.example.org/Employee'(A) :- 'http://www.example.org/AdministrativeStaff'(A).
'http://www.example.org/Employee'(A) :- 'http://www.example.org/Faculty'(A).
'http://www.example.org/Employee'(A) :- 'http://www.example.org/Person'(A), 'http://www.example.org/worksFor'(A, B), 'http://www.example.org/Organization'(B).

'http://www.example.org/Faculty'(A) :- 'http://www.example.org/Lecturer'(A).
'http://www.example.org/Faculty'(A) :- 'http://www.example.org/PostDoc_'(A).
'http://www.example.org/Faculty'(A) :- 'http://www.example.org/Professor'(A).
'http://www.example.org/Faculty'(A) :- 'http://www.example.org/teacherOf'(A, _).

'http://www.example.org/FullProfessor'(A) :- 'http://www.example.org/FullProfessor_'(A).

'http://www.example.org/GraduateCourse'(A) :- 'http://www.example.org/GraduateCourse_'(A).

'http://www.example.org/GraduateStudent'(A) :- 'http://www.example.org/GraduateStudent_'(A).

'http://www.example.org/hasAlumnus'(A, B) :- 'http://www.example.org/degreeFrom'(B, A).

'http://www.example.org/headOf'(A, B) :- 'http://www.example.org/headOf_'(A, B).

'http://www.example.org/Lecturer'(A) :- 'http://www.example.org/Lecturer_'(A).

'http://www.example.org/mastersDegreeFrom'(A, B) :- 'http://www.example.org/mastersDegreeFrom_'(A, B).

'http://www.example.org/member'(A, B) :- 'http://www.example.org/memberOf'(B, A).

'http://www.example.org/memberOf'(A, B) :- 'http://www.example.org/member'(B, A).
'http://www.example.org/memberOf'(A, B) :- 'http://www.example.org/memberOf_'(A, B).
'http://www.example.org/memberOf'(A, B) :- 'http://www.example.org/worksFor'(A, B).

'http://www.example.org/name'(A, B) :- 'http://www.example.org/name_'(A, B).

'http://www.example.org/Organization'(A) :- 'http://www.example.org/affiliatedOrganizationOf'(_, A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/affiliatedOrganizationOf'(A, _).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/affiliateOf_'(A, _).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/College_'(A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/Department'(A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/Institute'(A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/member'(A, _).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/orgPublication'(A, _).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/Program'(A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/ResearchGroup'(A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/subOrganizationOf'(_, A).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/subOrganizationOf'(A, _).
'http://www.example.org/Organization'(A) :- 'http://www.example.org/University'(A).

'http://www.example.org/Person'(A) :- 'http://www.example.org/advisor'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/affiliateOf_'(_, A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/age_'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/Chair'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/degreeFrom'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/Director'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/doctoralDegreeFrom'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/emailAddress'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/Employee'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/GraduateStudent'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/hasAlumnus'(_, A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/mastersDegreeFrom'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/member'(_, A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/publicationAuthor'(_, A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/ResearchAssistant'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/Student'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/TeachingAssistant'(A).
'http://www.example.org/Person'(A) :- 'http://www.example.org/telephone'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/title'(A, _).
'http://www.example.org/Person'(A) :- 'http://www.example.org/undergraduateDegreeFrom'(A, _).

'http://www.example.org/Professor'(A) :- 'http://www.example.org/advisor'(_, A).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/AssistantProfessor'(A).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/AssociateProfessor'(A).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/Chair'(A).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/Dean'(A).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/FullProfessor'(A).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/tenured_'(A, _).
'http://www.example.org/Professor'(A) :- 'http://www.example.org/VisitingProfessor_'(A).

'http://www.example.org/Publication'(A) :- 'http://www.example.org/Article'(A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/Book'(A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/Manual'(A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/orgPublication'(_, A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/Publication_'(A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/publicationAuthor'(A, _).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/publicationDate'(A, _).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/publicationResearch'(A, _).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/Software'(A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/softwareDocumentation_'(_, A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/Specification'(A).
'http://www.example.org/Publication'(A) :- 'http://www.example.org/UnofficialPublication_'(A).

'http://www.example.org/publicationAuthor'(A, B) :- 'http://www.example.org/publicationAuthor_'(A, B).

'http://www.example.org/Research'(A) :- 'http://www.example.org/publicationResearch'(_, A).
'http://www.example.org/Research'(A) :- 'http://www.example.org/researchProject_'(_, A).

'http://www.example.org/ResearchAssistant'(A) :- 'http://www.example.org/ResearchAssistant_'(A).

'http://www.example.org/ResearchGroup'(A) :- 'http://www.example.org/ResearchGroup_'(A).
'http://www.example.org/ResearchGroup'(A) :- 'http://www.example.org/researchProject_'(A, _).

'http://www.example.org/researchInterest'(A, B) :- 'http://www.example.org/researchInterest_'(A, B).

'http://www.example.org/Schedule'(A) :- 'http://www.example.org/listedCourse_'(A, _).

'http://www.example.org/Software'(A) :- 'http://www.example.org/softwareDocumentation_'(A, _).
'http://www.example.org/Software'(A) :- 'http://www.example.org/softwareVersion'(A, _).

'http://www.example.org/Student'(A) :- 'http://www.example.org/Person'(A), 'http://www.example.org/takesCourse'(A, B), 'http://www.example.org/Course'(B).
'http://www.example.org/Student'(A) :- 'http://www.example.org/UndergraduateStudent'(A).

'http://www.example.org/subOrganizationOf'(A, B) :- 'http://www.example.org/subOrganizationOf_'(A, B).
'http://www.example.org/subOrganizationOf'(A, C) :- 'http://www.example.org/subOrganizationOf'(A, B), 'http://www.example.org/subOrganizationOf'(B, C).

'http://www.example.org/takesCourse'(A, B) :- 'http://www.example.org/takesCourse_'(A, B).

'http://www.example.org/teacherOf'(A, B) :- 'http://www.example.org/teacherOf_'(A, B).

'http://www.example.org/TeachingAssistant'(A) :- 'http://www.example.org/Person'(A), 'http://www.example.org/teachingAssistantOf'(A, B), 'http://www.example.org/Course'(B).
'http://www.example.org/TeachingAssistant'(A) :- 'http://www.example.org/TeachingAssistant_'(A).
'http://www.example.org/TeachingAssistant'(A) :- 'http://www.example.org/teachingAssistantOf'(A, _).

'http://www.example.org/teachingAssistantOf'(A, B) :- 'http://www.example.org/teachingAssistantOf_'(A, B).

'http://www.example.org/telephone'(A, B) :- 'http://www.example.org/telephone_'(A, B).

'http://www.example.org/undergraduateDegreeFrom'(A, B) :- 'http://www.example.org/undergraduateDegreeFrom_'(A, B).

'http://www.example.org/UndergraduateStudent'(A) :- 'http://www.example.org/UndergraduateStudent_'(A).

'http://www.example.org/University'(A) :- 'http://www.example.org/degreeFrom'(_, A).
'http://www.example.org/University'(A) :- 'http://www.example.org/doctoralDegreeFrom'(_, A).
'http://www.example.org/University'(A) :- 'http://www.example.org/hasAlumnus'(A, _).
'http://www.example.org/University'(A) :- 'http://www.example.org/mastersDegreeFrom'(_, A).
'http://www.example.org/University'(A) :- 'http://www.example.org/undergraduateDegreeFrom'(_, A).
'http://www.example.org/University'(A) :- 'http://www.example.org/University_'(A).

'http://www.example.org/Work'(A) :- 'http://www.example.org/Course'(A).
'http://www.example.org/Work'(A) :- 'http://www.example.org/Research'(A).

'http://www.example.org/worksFor'(A, B) :- 'http://www.example.org/headOf'(A, B).
'http://www.example.org/worksFor'(A, B) :- 'http://www.example.org/worksFor_'(A, B).

% query
query('http://www.example.org/Professor'(_A)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.

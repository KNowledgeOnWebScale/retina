:- dynamic('<http://www.example.org/advisor>'/2).
:- dynamic('<http://www.example.org/affiliatedOrganizationOf>'/2).
:- dynamic('<http://www.example.org/affiliateOf>'/2).
:- dynamic('<http://www.example.org/age>'/2).
:- dynamic('<http://www.example.org/degreeFrom>'/2).
:- dynamic('<http://www.example.org/directSubOrganizationOf>'/2).
:- dynamic('<http://www.example.org/doctoralDegreeFrom>'/2).
:- dynamic('<http://www.example.org/emailAddress>'/2).
:- dynamic('<http://www.example.org/hasAlumnus>'/2).
:- dynamic('<http://www.example.org/headOf>'/2).
:- dynamic('<http://www.example.org/listedCourse>'/2).
:- dynamic('<http://www.example.org/mastersDegreeFrom>'/2).
:- dynamic('<http://www.example.org/member>'/2).
:- dynamic('<http://www.example.org/memberOf>'/2).
:- dynamic('<http://www.example.org/name>'/2).
:- dynamic('<http://www.example.org/orgPublication>'/2).
:- dynamic('<http://www.example.org/publicationAuthor>'/2).
:- dynamic('<http://www.example.org/publicationDate>'/2).
:- dynamic('<http://www.example.org/publicationResearch>'/2).
:- dynamic('<http://www.example.org/researchInterest>'/2).
:- dynamic('<http://www.example.org/researchProject>'/2).
:- dynamic('<http://www.example.org/softwareDocumentation>'/2).
:- dynamic('<http://www.example.org/softwareVersion>'/2).
:- dynamic('<http://www.example.org/subOrganizationOf>'/2).
:- dynamic('<http://www.example.org/takesCourse>'/2).
:- dynamic('<http://www.example.org/teacherOf>'/2).
:- dynamic('<http://www.example.org/teachingAssistantOf>'/2).
:- dynamic('<http://www.example.org/telephone>'/2).
:- dynamic('<http://www.example.org/tenured>'/2).
:- dynamic('<http://www.example.org/title>'/2).
:- dynamic('<http://www.example.org/undergraduateDegreeFrom>'/2).
:- dynamic('<http://www.example.org/worksFor>'/2).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_1'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_1', '<http://www.example.org/AdministrativeStaff>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_1', '<http://www.example.org/Employee>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_2', '_:Y_1_1'],
    (
        '<http://www.example.org/advisor>'('_:X_1_2', '_:Y_1_1'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_2', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_3', '_:Y_1_2'],
    (
        '<http://www.example.org/advisor>'('_:X_1_3', '_:Y_1_2'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_2', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_4', '_:Y_1_3'],
    (
        '<http://www.example.org/affiliatedOrganizationOf>'('_:X_1_4', '_:Y_1_3'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_4', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_5', '_:Y_1_4'],
    (
        '<http://www.example.org/affiliatedOrganizationOf>'('_:X_1_5', '_:Y_1_4'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_4', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_6', '_:Y_1_5'],
    (
        '<http://www.example.org/affiliateOf>'('_:X_1_6', '_:Y_1_5'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_6', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_7', '_:Y_1_6'],
    (
        '<http://www.example.org/affiliateOf>'('_:X_1_7', '_:Y_1_6'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_6', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_8', '_:Y_1_7'],
    (
        '<http://www.example.org/age>'('_:X_1_8', '_:Y_1_7'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_8', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_9'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_9', '<http://www.example.org/Article>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_9', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_10'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_10', '<http://www.example.org/AssistantProfessor>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_10', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_11'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_11', '<http://www.example.org/AssociateProfessor>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_11', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_12'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_12', '<http://www.example.org/Book>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_12', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_13', '_:Y_1_8'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_13', '<http://www.example.org/Chair>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/headOf>'('_:X_1_13', '_:Y_1_8'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_8', '<http://www.example.org/Department>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_14'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_14', '<http://www.example.org/Chair>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_14', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_15'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_15', '<http://www.example.org/Chair>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_15', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_16'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_16', '<http://www.example.org/ClericalStaff>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_16', '<http://www.example.org/AdministrativeStaff>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_17'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_17', '<http://www.example.org/College>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_17', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_18'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_18', '<http://www.example.org/ConferencePaper>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_18', '<http://www.example.org/Article>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_19'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_19', '<http://www.example.org/Course>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_19', '<http://www.example.org/Work>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_20', '_:Y_1_9'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_20', '<http://www.example.org/Dean>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/headOf>'('_:X_1_20', '_:Y_1_9'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_9', '<http://www.example.org/College>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_21'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_21', '<http://www.example.org/Dean>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_21', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_22', '_:Y_1_10'],
    (
        '<http://www.example.org/degreeFrom>'('_:X_1_22', '_:Y_1_10'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_22', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_23', '_:Y_1_11'],
    (
        '<http://www.example.org/degreeFrom>'('_:X_1_23', '_:Y_1_11'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_11', '<http://www.example.org/University>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_24', '_:Y_1_12'],
    (
        '<http://www.example.org/degreeFrom>'('_:Y_1_12', '_:X_1_24'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/hasAlumnus>'('_:X_1_24', '_:Y_1_12')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_25'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_25', '<http://www.example.org/Department>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_25', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_26', '_:Y_1_13'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_26', '<http://www.example.org/Director>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/headOf>'('_:X_1_26', '_:Y_1_13'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_13', '<http://www.example.org/Program>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_27'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_27', '<http://www.example.org/Director>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_27', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_28', '_:Y_1_14'],
    (
        '<http://www.example.org/doctoralDegreeFrom>'('_:X_1_28', '_:Y_1_14'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_28', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_29', '_:Y_1_15'],
    (
        '<http://www.example.org/doctoralDegreeFrom>'('_:X_1_29', '_:Y_1_15'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_15', '<http://www.example.org/University>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_30', '_:Y_1_16'],
    (
        '<http://www.example.org/doctoralDegreeFrom>'('_:X_1_30', '_:Y_1_16'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/degreeFrom>'('_:X_1_30', '_:Y_1_16')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_31', '_:Y_1_17'],
    (
        '<http://www.example.org/emailAddress>'('_:X_1_31', '_:Y_1_17'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_31', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_32'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_32', '<http://www.example.org/Employee>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_32', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_33', '_:Y_1_18'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_33', '<http://www.example.org/Employee>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/worksFor>'('_:X_1_33', '_:Y_1_18'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_18', '<http://www.example.org/Organization>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_34'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_34', '<http://www.example.org/Faculty>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_34', '<http://www.example.org/Employee>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_35'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_35', '<http://www.example.org/FullProfessor>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_35', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_36'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_36', '<http://www.example.org/GraduateCourse>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_36', '<http://www.example.org/Course>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_37'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_37', '<http://www.example.org/GraduateStudent>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_37', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_38', '_:Y_1_19'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_38', '<http://www.example.org/GraduateStudent>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/takesCourse>'('_:X_1_38', '_:Y_1_19'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_19', '<http://www.example.org/GraduateCourse>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_39', '_:Y_1_20'],
    (
        '<http://www.example.org/hasAlumnus>'('_:X_1_39', '_:Y_1_20'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_20', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_40', '_:Y_1_21'],
    (
        '<http://www.example.org/hasAlumnus>'('_:X_1_40', '_:Y_1_21'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_40', '<http://www.example.org/University>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_41', '_:Y_1_22'],
    (
        '<http://www.example.org/hasAlumnus>'('_:Y_1_22', '_:X_1_41'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/degreeFrom>'('_:X_1_41', '_:Y_1_22')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_42', '_:Y_1_23'],
    (
        '<http://www.example.org/headOf>'('_:X_1_42', '_:Y_1_23'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_23', '<http://www.example.org/College>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_42', '<http://www.example.org/Dean>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_43', '_:Y_1_24'],
    (
        '<http://www.example.org/headOf>'('_:X_1_43', '_:Y_1_24'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/worksFor>'('_:X_1_43', '_:Y_1_24')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_44'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_44', '<http://www.example.org/Institute>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_44', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_45'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_45', '<http://www.example.org/JournalArticle>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_45', '<http://www.example.org/Article>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_46'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_46', '<http://www.example.org/Lecturer>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_46', '<http://www.example.org/Faculty>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_47', '_:Y_1_25'],
    (
        '<http://www.example.org/listedCourse>'('_:X_1_47', '_:Y_1_25'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_25', '<http://www.example.org/Course>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_48', '_:Y_1_26'],
    (
        '<http://www.example.org/listedCourse>'('_:X_1_48', '_:Y_1_26'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_48', '<http://www.example.org/Schedule>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_49'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_49', '<http://www.example.org/Manual>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_49', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_50', '_:Y_1_27'],
    (
        '<http://www.example.org/mastersDegreeFrom>'('_:X_1_50', '_:Y_1_27'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_50', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_51', '_:Y_1_28'],
    (
        '<http://www.example.org/mastersDegreeFrom>'('_:X_1_51', '_:Y_1_28'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_28', '<http://www.example.org/University>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_52', '_:Y_1_29'],
    (
        '<http://www.example.org/mastersDegreeFrom>'('_:X_1_52', '_:Y_1_29'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/degreeFrom>'('_:X_1_52', '_:Y_1_29')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_53', '_:Y_1_30'],
    (
        '<http://www.example.org/member>'('_:X_1_53', '_:Y_1_30'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_53', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_54', '_:Y_1_31'],
    (
        '<http://www.example.org/member>'('_:X_1_54', '_:Y_1_31'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_31', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_55', '_:Y_1_32'],
    (
        '<http://www.example.org/member>'('_:Y_1_32', '_:X_1_55'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/memberOf>'('_:X_1_55', '_:Y_1_32')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_56', '_:Y_1_33'],
    (
        '<http://www.example.org/memberOf>'('_:Y_1_33', '_:X_1_56'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/member>'('_:X_1_56', '_:Y_1_33')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_57', '_:Y_1_34'],
    (
        '<http://www.example.org/orgPublication>'('_:X_1_57', '_:Y_1_34'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_57', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_58', '_:Y_1_35'],
    (
        '<http://www.example.org/orgPublication>'('_:X_1_58', '_:Y_1_35'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_35', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_59', '_:Y_1_36'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_59', '<http://www.example.org/Person>'),
        '<http://www.example.org/headOf>'('_:X_1_59', '_:Y_1_36'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_36', '<http://www.example.org/Department>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_59', '<http://www.example.org/Chair>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_60', '_:Y_1_37'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_60', '<http://www.example.org/Person>'),
        '<http://www.example.org/headOf>'('_:X_1_60', '_:Y_1_37'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_37', '<http://www.example.org/Program>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_60', '<http://www.example.org/Director>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_61', '_:Y_1_38'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_61', '<http://www.example.org/Person>'),
        '<http://www.example.org/takesCourse>'('_:X_1_61', '_:Y_1_38'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_38', '<http://www.example.org/Course>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_61', '<http://www.example.org/Student>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_62', '_:Y_1_39'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_62', '<http://www.example.org/Person>'),
        '<http://www.example.org/teachingAssistantOf>'('_:X_1_62', '_:Y_1_39'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_39', '<http://www.example.org/Course>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_62', '<http://www.example.org/TeachingAssistant>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_63', '_:Y_1_40'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_63', '<http://www.example.org/Person>'),
        '<http://www.example.org/worksFor>'('_:X_1_63', '_:Y_1_40'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_40', '<http://www.example.org/Organization>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_63', '<http://www.example.org/Employee>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_64'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_64', '<http://www.example.org/PostDoc>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_64', '<http://www.example.org/Faculty>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_65'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_65', '<http://www.example.org/Professor>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_65', '<http://www.example.org/Faculty>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_66'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_66', '<http://www.example.org/Program>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_66', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_67', '_:Y_1_41'],
    (
        '<http://www.example.org/publicationAuthor>'('_:X_1_67', '_:Y_1_41'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_41', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_68', '_:Y_1_42'],
    (
        '<http://www.example.org/publicationAuthor>'('_:X_1_68', '_:Y_1_42'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_68', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_69', '_:Y_1_43'],
    (
        '<http://www.example.org/publicationDate>'('_:X_1_69', '_:Y_1_43'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_69', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_70', '_:Y_1_44'],
    (
        '<http://www.example.org/publicationResearch>'('_:X_1_70', '_:Y_1_44'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_70', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_71', '_:Y_1_45'],
    (
        '<http://www.example.org/publicationResearch>'('_:X_1_71', '_:Y_1_45'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_45', '<http://www.example.org/Research>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_72'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_72', '<http://www.example.org/Research>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_72', '<http://www.example.org/Work>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_73'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_73', '<http://www.example.org/ResearchAssistant>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_73', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_74', '_:Y_1_46'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_74', '<http://www.example.org/ResearchAssistant>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/worksFor>'('_:X_1_74', '_:Y_1_46'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_46', '<http://www.example.org/ResearchGroup>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_75'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_75', '<http://www.example.org/ResearchGroup>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_75', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_76', '_:Y_1_47'],
    (
        '<http://www.example.org/researchProject>'('_:X_1_76', '_:Y_1_47'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_47', '<http://www.example.org/Research>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_77', '_:Y_1_48'],
    (
        '<http://www.example.org/researchProject>'('_:X_1_77', '_:Y_1_48'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_77', '<http://www.example.org/ResearchGroup>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_78'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_78', '<http://www.example.org/Software>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_78', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_79', '_:Y_1_49'],
    (
        '<http://www.example.org/softwareDocumentation>'('_:X_1_79', '_:Y_1_49'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_49', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_80', '_:Y_1_50'],
    (
        '<http://www.example.org/softwareDocumentation>'('_:X_1_80', '_:Y_1_50'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_80', '<http://www.example.org/Software>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_81', '_:Y_1_51'],
    (
        '<http://www.example.org/softwareVersion>'('_:X_1_81', '_:Y_1_51'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_81', '<http://www.example.org/Software>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_82'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_82', '<http://www.example.org/Specification>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_82', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_83'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_83', '<http://www.example.org/Student>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_83', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_84', '_:Y_1_52'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_84', '<http://www.example.org/Student>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/takesCourse>'('_:X_1_84', '_:Y_1_52'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_52', '<http://www.example.org/Course>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_85', '_:Y_1_53'],
    (
        '<http://www.example.org/subOrganizationOf>'('_:X_1_85', '_:Y_1_53'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_85', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_86', '_:Y_1_54'],
    (
        '<http://www.example.org/subOrganizationOf>'('_:X_1_86', '_:Y_1_54'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_54', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_87', '_:Y_1_55', '_:Z_1_1'],
    (
        '<http://www.example.org/subOrganizationOf>'('_:X_1_87', '_:Y_1_55'),
        '<http://www.example.org/subOrganizationOf>'('_:Y_1_55', '_:Z_1_1'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/subOrganizationOf>'('_:X_1_87', '_:Z_1_1')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_88'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_88', '<http://www.example.org/SystemsStaff>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_88', '<http://www.example.org/AdministrativeStaff>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_89', '_:Y_1_56'],
    (
        '<http://www.example.org/teacherOf>'('_:X_1_89', '_:Y_1_56'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_56', '<http://www.example.org/Course>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_90', '_:Y_1_57'],
    (
        '<http://www.example.org/teacherOf>'('_:X_1_90', '_:Y_1_57'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_90', '<http://www.example.org/Faculty>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_91'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_91', '<http://www.example.org/TeachingAssistant>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_91', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_92', '_:Y_1_58'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_92', '<http://www.example.org/TeachingAssistant>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            (
                '<http://www.example.org/teachingAssistantOf>'('_:X_1_92', '_:Y_1_58'),
                '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_58', '<http://www.example.org/Course>')
            )
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_93', '_:Y_1_59'],
    (
        '<http://www.example.org/teachingAssistantOf>'('_:X_1_93', '_:Y_1_59'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_59', '<http://www.example.org/Course>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_94', '_:Y_1_60'],
    (
        '<http://www.example.org/teachingAssistantOf>'('_:X_1_94', '_:Y_1_60'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_94', '<http://www.example.org/TeachingAssistant>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_95'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_95', '<http://www.example.org/TechnicalReport>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_95', '<http://www.example.org/Article>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_96', '_:Y_1_61'],
    (
        '<http://www.example.org/telephone>'('_:X_1_96', '_:Y_1_61'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_96', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_97', '_:Y_1_62'],
    (
        '<http://www.example.org/tenured>'('_:X_1_97', '_:Y_1_62'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_97', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_98', '_:Y_1_63'],
    (
        '<http://www.example.org/title>'('_:X_1_98', '_:Y_1_63'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_98', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_99', '_:Y_1_64'],
    (
        '<http://www.example.org/undergraduateDegreeFrom>'('_:X_1_99', '_:Y_1_64'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_99', '<http://www.example.org/Person>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_100', '_:Y_1_65'],
    (
        '<http://www.example.org/undergraduateDegreeFrom>'('_:X_1_100', '_:Y_1_65'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y_1_65', '<http://www.example.org/University>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_101', '_:Y_1_66'],
    (
        '<http://www.example.org/undergraduateDegreeFrom>'('_:X_1_101', '_:Y_1_66'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/degreeFrom>'('_:X_1_101', '_:Y_1_66')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_102'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_102', '<http://www.example.org/UndergraduateStudent>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_102', '<http://www.example.org/Student>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_103'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_103', '<http://www.example.org/University>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_103', '<http://www.example.org/Organization>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_104'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_104', '<http://www.example.org/UnofficialPublication>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_104', '<http://www.example.org/Publication>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_105'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_105', '<http://www.example.org/VisitingProfessor>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X_1_105', '<http://www.example.org/Professor>')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X_1_106', '_:Y_1_67'],
    (
        '<http://www.example.org/worksFor>'('_:X_1_106', '_:Y_1_67'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.example.org/memberOf>'('_:X_1_106', '_:Y_1_67')
        )
    )
).

% query
'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X_1_107', '_:Y_1_68'],
    '<http://www.example.org/degreeFrom>'('_:X_1_107', '_:Y_1_68')
).

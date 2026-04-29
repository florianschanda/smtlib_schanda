(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0026ABFC)))
;; x should be Float32(0x0026ABFC [Rational(633599, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 90430268859218180954092821785569461951946963210072801.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0))))
;; w should be Float32(0x0026ABFC [Rational(633599, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)

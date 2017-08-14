(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0026ABFC)))
;; x should be Float32(0x0026ABFC [Rational(633599, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 42818752193.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x8020AB0A [Rational(-1070469, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

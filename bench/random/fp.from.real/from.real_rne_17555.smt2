(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 334115650158315074411407243532969607044.0))))
;; w should be Float32(0xFF7B5C55 [Rational(-334115642257815398632666413309014048768), -334115642257815398632666413309014048768.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2A94CE57)))
;; x should be Float32(0x2A94CE57 [Rational(9752151, 36893488147419103232), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF800000)))
;; y should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (= result ((_ to_fp 8 24) #x2A94CE57)))
(check-sat)
(exit)

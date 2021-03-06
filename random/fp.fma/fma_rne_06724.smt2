(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7FAEC6A9)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF800000)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCC08EA95)))
;; z should be Float32(0xCC08EA95 [Rational(-35891796), -35891796.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)

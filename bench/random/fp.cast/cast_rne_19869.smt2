(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF9F1E236)))
;; x should be Float32(0xF9F1E236 [Rational(-156991455724761813283236468188250112), -156991455724761813283236468188250112.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC73E3C46C0000000 [Rational(-156991455724761813283236468188250112), -156991455724761813283236468188250112.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC73E3C46C0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

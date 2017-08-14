(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b11110011 #b11100011110001000110110)))
;; x should be Float32(0xF9F1E236 [Rational(-156991455724761813283236468188250112), -156991455724761813283236468188250112.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xC073E3C46C0000000000000000000000 [Rational(-156991455724761813283236468188250112), -156991455724761813283236468188250112.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC073E3C46C0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

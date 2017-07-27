(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10110110110011100000000)))
;; x should be Float32(0x805B6700 [Rational(-23399, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBF806D9C000000000000000000000000 [Rational(-23399, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF806D9C000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

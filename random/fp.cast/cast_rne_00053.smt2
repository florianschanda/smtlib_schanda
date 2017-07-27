(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805B6700)))
;; x should be Float32(0x805B6700 [Rational(-23399, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xB806D9C000000000 [Rational(-23399, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01110000000 #b0110110110011100000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

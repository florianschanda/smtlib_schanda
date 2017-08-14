(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b11101010 #b10111010110110000010001)))
;; x should be Float32(0xF55D6C11 [Rational(-280685901575232917188663350132736), -280685901575232917188663350132736.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xC06ABAD8220000000000000000000000 [Rational(-280685901575232917188663350132736), -280685901575232917188663350132736.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC06ABAD8220000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

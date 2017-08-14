(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF55D6C11)))
;; x should be Float32(0xF55D6C11 [Rational(-280685901575232917188663350132736), -280685901575232917188663350132736.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xC6ABAD8220000000 [Rational(-280685901575232917188663350132736), -280685901575232917188663350132736.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10001101010 #b1011101011011000001000100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

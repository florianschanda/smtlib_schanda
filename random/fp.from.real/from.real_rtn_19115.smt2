(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b01010001 #b10101010000000111110111)))
;; x should be Float32(0xA8D501F7 [Rational(-13959671, 590295810358705651712), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 45780421601.0 2951479051793528258560000.0))))
;; w should be Float32(0x288BB5F4 [Rational(2289021, 147573952589676412928), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)

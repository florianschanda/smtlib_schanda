(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC950CC48)))
;; x should be Float32(0xC950CC48 [Rational(-1710473, 2), -855236.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 44181570399.0 65536.0))))
;; w should be Float32(0x492496D4 [Rational(2696629, 4), 674157.250000])

(assert (distinct x w))
(check-sat)
(exit)

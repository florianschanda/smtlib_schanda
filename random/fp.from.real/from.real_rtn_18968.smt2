(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC950CC48)))
;; x should be Float32(0xC950CC48 [Rational(-1710473, 2), -855236.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 13683785.0 16.0)))))
;; w should be Float32(0xC950CC49 [Rational(-13683785, 16), -855236.562500])

(assert (distinct x w))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A98C5A7)))
;; x should be Float32(0x4A98C5A7 [Rational(10012071, 2), 5006035.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 35138209.0 8.0)))))
;; w should be Float32(0xCA860AA9 [Rational(-8784553, 2), -4392276.500000])

(assert (distinct x w))
(check-sat)
(exit)

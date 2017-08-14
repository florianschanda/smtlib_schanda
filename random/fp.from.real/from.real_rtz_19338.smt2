(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x44FB9F85)))
;; x should be Float32(0x44FB9F85 [Rational(16490373, 8192), 2012.984985])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 18761667171.0 16384000.0)))))
;; w should be Float32(0xC48F23E1 [Rational(-9380833, 8192), -1145.121216])

(assert (distinct x w))
(check-sat)
(exit)

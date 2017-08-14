(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF5A69F)))
;; x should be Float32(0x4AF5A69F [Rational(16098975, 2), 8049487.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 17779163.0 16.0)))))
;; w should be Float32(0xC987A4ED [Rational(-8889581, 8), -1111197.625000])

(assert (distinct x w))
(check-sat)
(exit)

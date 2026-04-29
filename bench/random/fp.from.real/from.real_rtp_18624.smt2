(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10001100 #b01001000101101110010100)))
;; x should be Float32(0xC6245B94 [Rational(-2692837, 256), -10518.894531])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 107713497023.0 10240000.0)))))
;; w should be Float32(0xC6245B95 [Rational(-10771349, 1024), -10518.895508])

(assert (distinct x w))
(check-sat)
(exit)

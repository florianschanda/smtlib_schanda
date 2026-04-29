(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111001010010111011111)))
;; x should be Float32(0x4A9CA5DF [Rational(10266079, 2), 5133039.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 73349843.0 16.0)))))
;; w should be Float32(0xCA8BE75B [Rational(-9168731, 2), -4584365.500000])

(assert (distinct x w))
(check-sat)
(exit)

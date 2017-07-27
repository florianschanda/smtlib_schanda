(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00011011111100010010111)))
;; x should be Float32(0xCA8DF897 [Rational(-9304215, 2), -4652107.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1190939621.0 256.0)))))
;; w should be Float32(0xCA8DF898 [Rational(-4652108), -4652108.000000])

(assert (distinct x w))
(check-sat)
(exit)

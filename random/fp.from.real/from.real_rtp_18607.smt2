(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10001101 #b00110100100111001000000)))
;; x should be Float32(0xC69A4E40 [Rational(-158009, 8), -19751.125000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 14679425.0 2048.0))))
;; w should be Float32(0x45DFFD81 [Rational(14679425, 2048), 7167.687988])

(assert (distinct x w))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00010010 #b10011011110010101000010)))
;; x should be Float32(0x094DE542 [Rational(6746785, 2722258935367507707706996859454145691648), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 10776647109.0 6805647338418769269267492148635364229120000.0)))))
;; w should be Float32(0x89038D06 [Rational(-4310659, 2722258935367507707706996859454145691648), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)

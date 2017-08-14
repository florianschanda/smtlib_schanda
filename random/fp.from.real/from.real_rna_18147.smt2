(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b11100011 #b00011101100110110001100)))
;; x should be Float32(0xF18ECD8C [Rational(-1414251594206707215682034991104), -1414251594206707215682034991104.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 916505751736387776391050141384.0)))
;; w should be Float32(0x7139163D [Rational(916505779989373033668577067008), 916505779989373033668577067008.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

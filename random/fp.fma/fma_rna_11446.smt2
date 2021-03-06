(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x807FFFFF)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00010011 #b00001110000101111010011)))
;; z should be Float32(0x09870BD3 [Rational(8850387, 2722258935367507707706996859454145691648), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x407FFFFD)))
(check-sat)
(exit)

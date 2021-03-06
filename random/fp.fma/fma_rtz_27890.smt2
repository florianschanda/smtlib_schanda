(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A75C76A)))
;; x should be Float32(0x4A75C76A [Rational(8053685, 2), 4026842.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11111111111111111111111)))
;; y should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10101101 #b01110011000100100001011)))
;; z should be Float32(0xD6B9890B [Rational(-101999123103744), -101999123103744.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b10101101 #b01110011000100100001010)))
(check-sat)
(exit)

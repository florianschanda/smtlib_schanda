(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00011001 #b01000101100000110111011)))
;; x should be Float32(0x0CA2C1BB [Rational(10666427, 42535295865117307932921825928971026432), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010001 #b10100110011010111110000)))
;; y should be Float32(0xC8D335F0 [Rational(-865119, 2), -432559.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x960647F7)))
(check-sat)
(exit)

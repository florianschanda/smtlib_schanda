(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xA6A15B17)))
;; y should be Float32(0xA6A15B17 [Rational(-10574615, 9444732965739290427392), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4A743A86)))
;; z should be Float32(0x4A743A86 [Rational(8002883, 2), 4001441.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b0 #b10010100 #b11101000011101010000101)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC99FCE14)))
;; x should be Float32(0xC99FCE14 [Rational(-2618245, 2), -1309122.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00001100 #b00100010100001011010011)))
;; y should be Float32(0x061142D3 [Rational(9519827, 348449143727040986586495598010130648530944), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x007FFFFF)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b00100000 #b01101010101101011100001))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10011101110111101100010)))
;; x should be Float32(0xCA4EEF62 [Rational(-6780849, 2), -3390424.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x5A48DB83)))
;; y should be Float32(0x5A48DB83 [Rational(14134087757332480), 14134087757332480.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b11001010 #b01000100101110001110110))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8067E8BF)))
;; x should be Float32(0x8067E8BF [Rational(-6809791, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x806DE92A)))
;; y should be Float32(0x806DE92A [Rational(-3601557, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result (fp #b1 #b00000001 #b10101011101000111101001))))
(check-sat)
(exit)

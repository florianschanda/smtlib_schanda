(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA4F8E4A)))
;; x should be Float32(0xCA4F8E4A [Rational(-6801189, 2), -3400594.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00100010011100010110111)))
;; y should be Float32(0x001138B7 [Rational(1128631, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (not (= result (fp #b1 #b10010100 #b10011111000111001001010))))
(check-sat)
(exit)

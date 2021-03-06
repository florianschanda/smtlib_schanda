(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x005FC40B)))
;; x should be Float32(0x005FC40B [Rational(6276107, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9A5C80C)))
;; y should be Float32(0xC9A5C80C [Rational(-2716163, 2), -1358081.500000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (not (= result (fp #b1 #b10010011 #b01001011100100000001011))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8041127C)))
;; x should be Float32(0x8041127C [Rational(-1066143, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11111110110111001000011)))
;; y should be Float32(0x807F6E43 [Rational(-8351299, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010011 #b10111100100011100111100)))
;; z should be Float32(0x49DE473C [Rational(3641807, 2), 1820903.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x49DE473C))))
(check-sat)
(exit)

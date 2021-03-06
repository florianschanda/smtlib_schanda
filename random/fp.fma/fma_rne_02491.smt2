(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10111100111000100010100)))
;; y should be Float32(0x805E7114 [Rational(-1547333, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010000 #b00001011011100010100000)))
;; z should be Float32(0x4805B8A0 [Rational(273861, 2), 136930.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4805B8A0))))
(check-sat)
(exit)

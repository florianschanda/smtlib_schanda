(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10100001000010101010100)))
;; x should be Float32(0x80508554 [Rational(-1319253, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b01100000111100101001110)))
;; y should be Float32(0x4A30794E [Rational(5782695, 2), 2891347.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00000000101101000110011)))
;; z should be Float32(0x00005A33 [Rational(23091, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x8ADE0745)))
(check-sat)
(exit)

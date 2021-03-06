(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01100001010010110110100)))
;; x should be Float32(0x49B0A5B4 [Rational(2894189, 2), 1447094.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00360177)))
;; z should be Float32(0x00360177 [Rational(3539319, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b00000000 #b01101100000000101110111))))
(check-sat)
(exit)

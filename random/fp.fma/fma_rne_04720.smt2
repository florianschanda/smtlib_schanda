(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A967005)))
;; y should be Float32(0x4A967005 [Rational(9859077, 2), 4929538.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x21CCD517)))
;; z should be Float32(0x21CCD517 [Rational(13423895, 9671406556917033397649408), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b01000011 #b10011001101010100010111))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00101111 #b10001011000100011100110)))
;; x should be Float32(0x17C588E6 [Rational(6472819, 5070602400912917605986812821504), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010100 #b11101011111100000101010)))
;; y should be Float32(0xCA75F82A [Rational(-8059925, 2), -4029962.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xA2BDCB82))))
(check-sat)
(exit)

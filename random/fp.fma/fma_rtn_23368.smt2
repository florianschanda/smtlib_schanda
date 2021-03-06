(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01010101 #b00010111001000001001100)))
;; x should be Float32(0x2A8B904C [Rational(2286611, 9223372036854775808), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x807FFFFF)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11011011 #b11011010000111000101111)))
;; z should be Float32(0xEDED0E2F [Rational(-9170636780044760121193005056), -9170636780044760121193005056.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xEDED0E30))))
(check-sat)
(exit)

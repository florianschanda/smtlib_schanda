(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01011110101100001001111)))
;; y should be Float32(0x802F584F [Rational(-3102799, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xC990557C)))
;; z should be Float32(0xC990557C [Rational(-2364767, 2), -1182383.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xC990557D)))
(check-sat)
(exit)

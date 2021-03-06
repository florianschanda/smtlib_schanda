(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4696C891)))
;; x should be Float32(0x4696C891 [Rational(9881745, 512), 19300.283203])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x24237CEA)))
;; y should be Float32(0x24237CEA [Rational(5357173, 151115727451828646838272), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b01010110 #b10000001001011010001110)))
(check-sat)
(exit)

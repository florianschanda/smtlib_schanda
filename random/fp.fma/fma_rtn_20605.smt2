(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b10010000 #b00011011010111101100000)))
;; y should be Float32(0x480DAF60 [Rational(290171, 2), 145085.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x006E26CD)))
;; z should be Float32(0x006E26CD [Rational(7218893, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x006E26CD)))
(check-sat)
(exit)

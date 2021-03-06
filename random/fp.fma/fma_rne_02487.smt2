(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xE190E615)))
;; y should be Float32(0xE190E615 [Rational(-334113788027176222720), -334113788027176222720.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11110100 #b11011100010100101010110)))
;; z should be Float32(0xFA6E2956 [Rational(-309151261186753730202668252109209600), -309151261186753730202668252109209600.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #xFA6E2956)))
(check-sat)
(exit)

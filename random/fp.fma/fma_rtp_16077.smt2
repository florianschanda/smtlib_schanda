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
(assert (= y (fp #b1 #b10010011 #b01001000100100100010100)))
;; y should be Float32(0xC9A44914 [Rational(-2691653, 2), -1345826.500000])

(declare-const z Float32)
(assert (= z (_ +oo 8 24)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)

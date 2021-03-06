(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA110FEE2)))
;; x should be Float32(0xA110FEE2 [Rational(-4751217, 9671406556917033397649408), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b00000000000000000000000)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8067B251)))
;; z should be Float32(0x8067B251 [Rational(-6795857, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7F800000))))
(check-sat)
(exit)

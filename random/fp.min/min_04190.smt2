(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x001A0527)))
;; x should be Float32(0x001A0527 [Rational(1705255, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F800000)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (not (= result (fp #b0 #b00000000 #b00110100000010100100111))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x369DD203)))
;; x should be Float32(0x369DD203 [Rational(10342915, 2199023255552), 0.000005])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10010001001001111010011)))
;; y should be Float32(0x4AC893D3 [Rational(13145043, 2), 6572521.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result (fp #b1 #b10010101 #b10010001001001111010010))))
(check-sat)
(exit)

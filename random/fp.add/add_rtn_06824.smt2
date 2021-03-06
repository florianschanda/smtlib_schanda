(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0004F9CF)))
;; x should be Float32(0x0004F9CF [Rational(326095, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0008928D)))
;; y should be Float32(0x0008928D [Rational(561805, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (not (= result (fp #b0 #b00000000 #b00011011000110001011100))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011110101101000011101)))
;; x should be Float32(0x002F5A1D [Rational(3103261, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 13841009531730633425546268071328168428270331456899803.0 3182868713022634509794446388139653376642919365103025391618969452116220780880213603411558400.0))))
;; w should be Float32(0x002F5A1D [Rational(3103261, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)

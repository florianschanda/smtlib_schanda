(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004816D7)))
;; x should be Float32(0x004816D7 [Rational(4724439, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 2633963247985462079910183846307823910098175919084227.0 397858589127829313724305798517456672080364920637878173952371181514527597610026700426444800.0))))
;; w should be Float32(0x004816D7 [Rational(4724439, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A8E8C67)))
;; x should be Float32(0x4A8E8C67 [Rational(9342055, 2), 4671027.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0060D283)))
;; y should be Float32(0x0060D283 [Rational(6345347, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x4A8E8C68))))
(check-sat)
(exit)

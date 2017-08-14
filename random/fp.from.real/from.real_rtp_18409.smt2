(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100100010111101100111)))
;; x should be Float32(0x00722F67 [Rational(7483239, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 33376360667676915598236295948680085181605067990505111.0 3182868713022634509794446388139653376642919365103025391618969452116220780880213603411558400.0))))
;; w should be Float32(0x00722F67 [Rational(7483239, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)

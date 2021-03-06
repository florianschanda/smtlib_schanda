(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x001EC3D9)))
;; x should be Float32(0x001EC3D9 [Rational(2016217, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 71941024921917610345572575045781001931173215501045447.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0))))
;; w should be Float32(0x001EC3D9 [Rational(2016217, 713623846352979940529142984724747568191373312), 0.000000])

(assert (= x w))
(check-sat)
(exit)

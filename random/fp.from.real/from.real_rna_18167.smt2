(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01010110001011110011110)))
;; x should be Float32(0x802B179E [Rational(-1412047, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 100767056907745546156051973367337443097076442136598171.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0)))))
;; w should be Float32(0x802B179E [Rational(-1412047, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)

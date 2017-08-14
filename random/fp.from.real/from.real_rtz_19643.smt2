(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11011110000011100000000)))
;; x should be Float32(0x806F0700 [Rational(-28423, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 507083268232238115289168846239967958055074722414629.0 49732323640978664215538224814682084010045615079734771744046397689315949701253337553305600.0)))))
;; w should be Float32(0x806F0700 [Rational(-28423, 2787593149816327892691964784081045188247552), -0.000000])

(assert (= x w))
(check-sat)
(exit)

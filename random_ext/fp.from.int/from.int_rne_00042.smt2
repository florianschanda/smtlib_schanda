(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RNE inf)
(declare-const x Int)
(assert (= x (- 228262591710336460855488689238533571490266088732748174585417728057995457525930412898318801199664381289810389326676857440615848522714717126080872671243159283605668862280404466407289303150753041512661016328471193317910766587798741289899263047141961776269949101174180105994854439138628684057510872660733201834057)))
(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) x)))
;; y should be Float64(-oo)

(declare-const z Float64)
(assert (= z (_ -oo 11 53)))
(assert (= y z))
